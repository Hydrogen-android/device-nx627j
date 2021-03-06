.class Lcom/android/server/clipboard/HostClipboardMonitor;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;
    }
.end annotation


# static fields
.field private static final PIPE_DEVICE:Ljava/lang/String; = "/dev/qemu_pipe"

.field private static final PIPE_NAME:Ljava/lang/String; = "pipe:clipboard"


# instance fields
.field private mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

.field private mPipe:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 94
    iput-object p1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    .line 95
    return-void
.end method

.method private openPipe()V
    .locals 4

    .line 75
    :try_start_0
    const-string/jumbo v0, "pipe:clipboard"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 76
    .local v0, "b":[B
    const-string/jumbo v1, "pipe:clipboard"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 77
    const-string/jumbo v1, "pipe:clipboard"

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string/jumbo v3, "pipe:clipboard"

    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 77
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 83
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/dev/qemu_pipe"

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 84
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "b":[B
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 88
    :cond_0
    goto :goto_0

    :catch_1
    move-exception v1

    .line 89
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 91
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/android/server/clipboard/HostClipboardMonitor;->openPipe()V

    .line 106
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 109
    .local v0, "size":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    move v0, v1

    .line 110
    new-array v1, v0, [B

    .line 111
    .local v1, "receivedData":[B
    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 112
    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;->onHostClipboardUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "size":I
    .end local v1    # "receivedData":[B
    goto :goto_3

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 117
    goto :goto_2

    :catch_2
    move-exception v1

    .line 118
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 119
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    goto :goto_0

    .line 121
    :cond_1
    return-void
.end method

.method public setHostClipboard(Ljava/lang/String;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HostClipboardMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set host clipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
