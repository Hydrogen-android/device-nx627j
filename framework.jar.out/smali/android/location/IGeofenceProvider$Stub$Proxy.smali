.class Landroid/location/IGeofenceProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeofenceProvider.java"

# interfaces
.implements Landroid/location/IGeofenceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeofenceProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/location/IGeofenceProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 71
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 74
    iget-object v0, p0, Landroid/location/IGeofenceProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "android.location.IGeofenceProvider"

    return-object v0
.end method

.method public setGeofenceHardware(Landroid/hardware/location/IGeofenceHardware;)V
    .locals 4
    .param p1, "proxy"    # Landroid/hardware/location/IGeofenceHardware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.IGeofenceProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/hardware/location/IGeofenceHardware;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 86
    iget-object v2, p0, Landroid/location/IGeofenceProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
