.class Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;
.super Ljava/lang/Object;
.source "SinglePageFlipping.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreAnimUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;


# direct methods
.method private constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;
    .param p2, "x1"    # Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$1;

    .line 70
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 75
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 76
    .local v0, "value":F
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;->this$0:Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;

    invoke-static {v1}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;->access$200(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping;)Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;

    move-result-object v1

    new-instance v2, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener$1;-><init>(Lcn/nubia/server/policy/edge/effects/animation/pageflipping/SinglePageFlipping$PreAnimUpdateListener;F)V

    invoke-virtual {v1, v2}, Lcn/nubia/server/policy/edge/effects/animation/pageflipping/AnimParam;->postRunable(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
