.class public final synthetic Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$rBcIcOof6Rq-Qftu35e13aLNWB4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$listInterfacesCallback;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$rBcIcOof6Rq-Qftu35e13aLNWB4;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$rBcIcOof6Rq-Qftu35e13aLNWB4;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->lambda$getIfaceV1_0$5(Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method
