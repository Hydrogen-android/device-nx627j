.class final Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;
.super Ljava/lang/Object;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UpdateReportedVisibilityResults"
.end annotation


# instance fields
.field nowGone:Z

.field numDrawn:I

.field numInteresting:I

.field numVisible:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4756
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 4759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 4760
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 4761
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 4762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 4763
    return-void
.end method
