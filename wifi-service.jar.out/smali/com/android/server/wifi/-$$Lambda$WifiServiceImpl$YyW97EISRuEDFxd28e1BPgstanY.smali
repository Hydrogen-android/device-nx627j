.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/WifiServiceImpl;

.field private final synthetic f$1:Lcom/android/server/wifi/util/GeneralUtil$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;->f$1:Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;->f$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$WifiServiceImpl$YyW97EISRuEDFxd28e1BPgstanY;->f$1:Lcom/android/server/wifi/util/GeneralUtil$Mutable;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->lambda$getWifiApConfiguration$5(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/util/GeneralUtil$Mutable;)V

    return-void
.end method
