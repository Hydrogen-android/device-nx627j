.class Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
.super Ljava/lang/Object;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cf"
.end annotation


# instance fields
.field final mIsCfu:Z

.field final mOnComplete:Landroid/os/Message;

.field final mServiceClass:I

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/os/Message;I)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "isCfu"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;
    .param p4, "serviceClass"    # I

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    .line 245
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    .line 246
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    .line 247
    iput p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mServiceClass:I

    .line 248
    return-void
.end method
