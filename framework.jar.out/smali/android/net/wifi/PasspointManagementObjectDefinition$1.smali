.class Landroid/net/wifi/PasspointManagementObjectDefinition$1;
.super Ljava/lang/Object;
.source "PasspointManagementObjectDefinition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/PasspointManagementObjectDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/PasspointManagementObjectDefinition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PasspointManagementObjectDefinition;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    new-instance v0, Landroid/net/wifi/PasspointManagementObjectDefinition;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/PasspointManagementObjectDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/net/wifi/PasspointManagementObjectDefinition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/PasspointManagementObjectDefinition;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/PasspointManagementObjectDefinition;
    .locals 1
    .param p1, "size"    # I

    .line 77
    new-array v0, p1, [Landroid/net/wifi/PasspointManagementObjectDefinition;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Landroid/net/wifi/PasspointManagementObjectDefinition$1;->newArray(I)[Landroid/net/wifi/PasspointManagementObjectDefinition;

    move-result-object p1

    return-object p1
.end method
