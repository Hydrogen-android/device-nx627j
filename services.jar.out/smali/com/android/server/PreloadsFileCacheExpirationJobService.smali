.class public Lcom/android/server/PreloadsFileCacheExpirationJobService;
.super Landroid/app/job/JobService;
.source "PreloadsFileCacheExpirationJobService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final JOB_ID:I = 0x18894

.field private static final PERSIST_SYS_PRELOADS_FILE_CACHE_EXPIRED:Ljava/lang/String; = "persist.sys.preloads.file_cache_expired"

.field private static final TAG:Ljava/lang/String; = "PreloadsFileCacheExpirationJobService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 53
    .local v0, "keepPreloadsMinDays":I
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 55
    .local v1, "keepPreloadsMinTimeoutMs":J
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    add-int/lit8 v4, v0, 0x1

    int-to-long v4, v4

    .line 56
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 63
    .local v3, "keepPreloadsMaxTimeoutMs":J
    new-instance v5, Landroid/app/job/JobInfo$Builder;

    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/android/server/PreloadsFileCacheExpirationJobService;

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v7, 0x18894

    invoke-direct {v5, v7, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 65
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v1, v2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 67
    invoke-virtual {v5, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    .line 70
    .local v5, "expirationJob":Landroid/app/job/JobInfo;
    const-class v6, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobScheduler;

    .line 71
    .local v6, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {v6, v5}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 72
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 76
    const-string/jumbo v0, "persist.sys.preloads.file_cache_expired"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "PreloadsFileCacheExpirationJobService"

    const-string v1, "Set persist.sys.preloads.file_cache_expired=1"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 83
    const/4 v0, 0x0

    return v0
.end method
