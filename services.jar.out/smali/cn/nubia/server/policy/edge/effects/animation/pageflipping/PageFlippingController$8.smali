.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;
.super Ljava/lang/Object;
.source "PageFlippingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->uploadPageFlippingTextures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

.field final synthetic val$uploadBitmaps:Ljava/util/List;

.field final synthetic val$uploadHashcodes:Ljava/util/List;

.field final synthetic val$uploadTextures:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    .line 699
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadTextures:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadBitmaps:Ljava/util/List;

    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadHashcodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 703
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1500(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$1300(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadTextures:Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->val$uploadBitmaps:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingRenderer;->createPageTextures(Ljava/util/List;Ljava/util/List;)V

    .line 705
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;

    invoke-static {v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v0

    new-instance v1, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/PageFlippingController$8;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 742
    return-void

    .line 705
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
