.class public final Landroid/media/MediaDrm$CertificateRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateRequest"
.end annotation


# instance fields
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "defaultUrl"    # Ljava/lang/String;

    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    iput-object p1, p0, Landroid/media/MediaDrm$CertificateRequest;->mData:[B

    .line 1469
    iput-object p2, p0, Landroid/media/MediaDrm$CertificateRequest;->mDefaultUrl:Ljava/lang/String;

    .line 1470
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1476
    iget-object v0, p0, Landroid/media/MediaDrm$CertificateRequest;->mData:[B

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .line 1484
    iget-object v0, p0, Landroid/media/MediaDrm$CertificateRequest;->mDefaultUrl:Ljava/lang/String;

    return-object v0
.end method
