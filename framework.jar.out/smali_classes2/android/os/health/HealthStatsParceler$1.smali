.class Landroid/os/health/HealthStatsParceler$1;
.super Ljava/lang/Object;
.source "HealthStatsParceler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthStatsParceler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/health/HealthStatsParceler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/health/HealthStatsParceler;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 45
    new-instance v0, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v0, p1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStatsParceler$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/health/HealthStatsParceler;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/health/HealthStatsParceler;
    .locals 1
    .param p1, "size"    # I

    .line 49
    new-array v0, p1, [Landroid/os/health/HealthStatsParceler;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStatsParceler$1;->newArray(I)[Landroid/os/health/HealthStatsParceler;

    move-result-object p1

    return-object p1
.end method
