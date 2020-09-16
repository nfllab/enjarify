.class public La/a;
.super Landroid/app/Activity;
.source "a.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static largerThanThree(I)Z
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x3

    if-le p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static print(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    const-string v0, "minimalFOO"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x2

    invoke-static {v0}, La/a;->largerThanThree(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->print(Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x5

    invoke-static {v0}, La/a;->largerThanThree(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->print(Ljava/lang/String;)V

    .line 24
    return-void
.end method
