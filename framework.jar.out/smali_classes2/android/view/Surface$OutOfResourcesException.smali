.class public Landroid/view/Surface$OutOfResourcesException;
.super Ljava/lang/RuntimeException;
.source "Surface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutOfResourcesException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 813
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 814
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 816
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 817
    return-void
.end method
