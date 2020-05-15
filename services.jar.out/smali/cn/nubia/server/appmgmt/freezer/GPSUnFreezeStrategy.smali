.class public Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;
.super Lcn/nubia/server/appmgmt/freezer/BaseStrategy;
.source "GPSUnFreezeStrategy.java"


# instance fields
.field private mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

.field private mCurrentlyIdleState:I

.field private mDebug:Z

.field private mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;Lcn/nubia/server/appmgmt/freezer/GPSCheck;)V
    .locals 2
    .param p1, "controller"    # Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;
    .param p2, "gpsCheck"    # Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    .line 18
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;-><init>()V

    .line 12
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mDebug:Z

    .line 19
    iput-object p1, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    .line 20
    iput-object p2, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    .line 21
    return-void
.end method


# virtual methods
.method public check(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z
    .locals 3
    .param p1, "info"    # Lcn/nubia/server/appmgmt/freezer/ProcessInfo;

    .line 29
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 30
    return v0

    .line 32
    :cond_0
    iget v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mCurrentlyIdleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 33
    return v0

    .line 35
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->isSportApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->isInMotionDozeState(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 36
    return v2

    .line 38
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->isGPSNoFreezeApp(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->isUsingGPS(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mGPSCheck:Lcn/nubia/server/appmgmt/freezer/GPSCheck;

    invoke-virtual {v1, p1}, Lcn/nubia/server/appmgmt/freezer/GPSCheck;->isInMotionDozeState(Lcn/nubia/server/appmgmt/freezer/ProcessInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    return v2

    .line 41
    :cond_3
    return v0
.end method

.method public needCheckWhenOtherNotAllow()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public preCheck()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mController:Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;

    iget v0, v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeController;->mCurrentlyIdleState:I

    iput v0, p0, Lcn/nubia/server/appmgmt/freezer/GPSUnFreezeStrategy;->mCurrentlyIdleState:I

    .line 25
    return-void
.end method

.method public bridge synthetic resetArgs()V
    .locals 0

    .line 10
    invoke-super {p0}, Lcn/nubia/server/appmgmt/freezer/BaseStrategy;->resetArgs()V

    return-void
.end method
