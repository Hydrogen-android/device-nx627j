.class Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

.field final synthetic val$n:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    .line 4694
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;->val$n:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 4697
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;->val$n:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;->val$n:Landroid/service/notification/StatusBarNotification;

    .line 4698
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 4697
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/GroupHelper;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)V

    .line 4699
    return-void
.end method
