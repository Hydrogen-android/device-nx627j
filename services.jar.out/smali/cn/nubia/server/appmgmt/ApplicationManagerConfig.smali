.class public final Lcn/nubia/server/appmgmt/ApplicationManagerConfig;
.super Ljava/lang/Object;
.source "ApplicationManagerConfig.java"


# static fields
.field public static DEBUG:Z

.field public static final ENABLE:Z

.field public static MONKEY_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const-string v0, "1"

    const-string/jumbo v1, "ro.nubia.app.manage.enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->ENABLE:Z

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->DEBUG:Z

    .line 11
    sput-boolean v0, Lcn/nubia/server/appmgmt/ApplicationManagerConfig;->MONKEY_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
