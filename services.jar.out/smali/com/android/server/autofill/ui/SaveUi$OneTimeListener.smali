.class Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;
.super Ljava/lang/Object;
.source "SaveUi.java"

# interfaces
.implements Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/SaveUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneTimeListener"
.end annotation


# instance fields
.field private mDone:Z

.field private final mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

.field final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V
    .locals 0
    .param p2, "realListener"    # Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 96
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    .line 98
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/IntentSender;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/IntentSender;

    .line 111
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneTimeListener.onCancel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mDone:Z

    if-eqz v0, :cond_1

    .line 113
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onCancel(Landroid/content/IntentSender;)V

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 120
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneTimeListener.onDestroy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mDone:Z

    if-eqz v0, :cond_1

    .line 122
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mDone:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onDestroy()V

    .line 126
    return-void
.end method

.method public onSave()V
    .locals 3

    .line 102
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneTimeListener.onSave(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mDone:Z

    if-eqz v0, :cond_1

    .line 104
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->mRealListener:Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;->onSave()V

    .line 107
    return-void
.end method
