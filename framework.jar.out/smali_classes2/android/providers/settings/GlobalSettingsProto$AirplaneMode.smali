.class public final Landroid/providers/settings/GlobalSettingsProto$AirplaneMode;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AirplaneMode"
.end annotation


# static fields
.field public static final ON:J = 0x10b00000001L

.field public static final RADIOS:J = 0x10b00000002L

.field public static final TOGGLEABLE_RADIOS:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 11
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$AirplaneMode;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method