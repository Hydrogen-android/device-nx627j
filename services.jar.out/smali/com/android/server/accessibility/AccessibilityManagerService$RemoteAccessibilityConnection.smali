.class Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteAccessibilityConnection"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field private final mUserId:I

.field private final mWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "windowId"    # I
    .param p3, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .line 2487
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2488
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mWindowId:I

    .line 2489
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    .line 2490
    iput p5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUid:I

    .line 2491
    iput p6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUserId:I

    .line 2492
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 2493
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    .line 2478
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 2517
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    .line 2518
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2519
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mWindowId:I

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;II)V

    .line 2520
    monitor-exit v0

    .line 2521
    return-void

    .line 2520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 2500
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 1

    .line 2504
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 2496
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mUid:I

    return v0
.end method

.method public linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2508
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2509
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .line 2512
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2513
    return-void
.end method
