.class Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotionDozeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/MotionDozeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargingStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 2

    .line 184
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ChargingStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$100(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 203
    return-void
.end method
