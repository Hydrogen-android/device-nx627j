.class public final synthetic Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$td7RNeapolv8UxSAWhbB9B3dpLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/AvailableNetworkNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$td7RNeapolv8UxSAWhbB9B3dpLc;->f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$AvailableNetworkNotifier$td7RNeapolv8UxSAWhbB9B3dpLc;->f$0:Lcom/android/server/wifi/AvailableNetworkNotifier;

    invoke-static {v0}, Lcom/android/server/wifi/AvailableNetworkNotifier;->lambda$handleConnectionFailure$2(Lcom/android/server/wifi/AvailableNetworkNotifier;)V

    return-void
.end method
