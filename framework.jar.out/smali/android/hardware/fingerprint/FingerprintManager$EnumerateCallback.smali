.class public abstract Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnumerateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnumerate(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 364
    return-void
.end method

.method public onEnumerateError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 358
    return-void
.end method
