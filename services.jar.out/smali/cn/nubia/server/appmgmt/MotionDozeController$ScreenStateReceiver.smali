.class Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotionDozeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/MotionDozeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/MotionDozeController;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/MotionDozeController;)V
    .locals 2

    .line 228
    iput-object p1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 233
    invoke-static {p1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$100(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 238
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$202(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$202(Lcn/nubia/server/appmgmt/MotionDozeController;Z)Z

    .line 244
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$300(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "MotionDozeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenStateReceiver  mScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$200(Lcn/nubia/server/appmgmt/MotionDozeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$500(Lcn/nubia/server/appmgmt/MotionDozeController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/server/appmgmt/MotionDozeController$ScreenStateReceiver;->this$0:Lcn/nubia/server/appmgmt/MotionDozeController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/MotionDozeController;->access$400(Lcn/nubia/server/appmgmt/MotionDozeController;)Lcn/nubia/server/appmgmt/MotionDozeController$AdjustStateRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method
