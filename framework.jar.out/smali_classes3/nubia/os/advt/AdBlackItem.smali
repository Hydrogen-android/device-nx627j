.class public Lnubia/os/advt/AdBlackItem;
.super Ljava/lang/Object;
.source "AdBlackItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lnubia/os/advt/AdBlackItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private package_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lnubia/os/advt/AdBlackItem$1;

    invoke-direct {v0}, Lnubia/os/advt/AdBlackItem$1;-><init>()V

    sput-object v0, Lnubia/os/advt/AdBlackItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnubia/os/advt/AdBlackItem;->package_name:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lnubia/os/advt/AdBlackItem;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "package_name"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lnubia/os/advt/AdBlackItem;->package_name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Lnubia/os/advt/AdBlackItem;->package_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
