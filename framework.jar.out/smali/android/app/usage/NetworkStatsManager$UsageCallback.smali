.class public abstract Landroid/app/usage/NetworkStatsManager$UsageCallback;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UsageCallback"
.end annotation


# instance fields
.field private request:Landroid/net/DataUsageRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;
    .locals 1
    .param p0, "x0"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .line 494
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager$UsageCallback;->request:Landroid/net/DataUsageRequest;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;
    .locals 0
    .param p0, "x0"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;
    .param p1, "x1"    # Landroid/net/DataUsageRequest;

    .line 494
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager$UsageCallback;->request:Landroid/net/DataUsageRequest;

    return-object p1
.end method


# virtual methods
.method public abstract onThresholdReached(ILjava/lang/String;)V
.end method
