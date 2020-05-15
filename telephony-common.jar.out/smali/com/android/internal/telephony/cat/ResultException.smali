.class public Lcom/android/internal/telephony/cat/ResultException;
.super Lcom/android/internal/telephony/cat/CatException;
.source "ResultException.java"


# instance fields
.field private mAdditionalInfo:I

.field private mExplanation:Ljava/lang/String;

.field private mResult:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatException;-><init>()V

    .line 36
    sget-object v0, Lcom/android/internal/telephony/cat/ResultException$1;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    .line 55
    return-void

    .line 45
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For result code, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", additional information must be given!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;I)V
    .locals 2
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "additionalInfo"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 65
    if-ltz p2, :cond_0

    .line 70
    iput p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    .line 71
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Additional info must be greater than zero!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;ILjava/lang/String;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "additionalInfo"    # I
    .param p3, "explanation"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    .line 75
    iput-object p3, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/ResultCode;Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p2, "explanation"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public additionalInfo()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    return v0
.end method

.method public explanation()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdditionalInfo()Z
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public result()Lcom/android/internal/telephony/cat/ResultCode;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mResult:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " additionalInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mAdditionalInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " explantion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/ResultException;->mExplanation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
