.class public final enum Lcom/android/internal/telephony/Call$SrvccState;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SrvccState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/Call$SrvccState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum FAILED:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum NONE:Lcom/android/internal/telephony/Call$SrvccState;

.field public static final enum STARTED:Lcom/android/internal/telephony/Call$SrvccState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 64
    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "COMPLETED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    new-instance v0, Lcom/android/internal/telephony/Call$SrvccState;

    const-string v1, "CANCELED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Call$SrvccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/Call$SrvccState;

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/Call$SrvccState;->$VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$SrvccState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 63
    const-class v0, Lcom/android/internal/telephony/Call$SrvccState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call$SrvccState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Call$SrvccState;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->$VALUES:[Lcom/android/internal/telephony/Call$SrvccState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Call$SrvccState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Call$SrvccState;

    return-object v0
.end method
