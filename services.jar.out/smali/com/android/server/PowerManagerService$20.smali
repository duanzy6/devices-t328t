.class Lcom/android/server/PowerManagerService$20;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;

.field final synthetic val$confirm:Z

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ZZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3031
    iput-object p1, p0, Lcom/android/server/PowerManagerService$20;->this$0:Lcom/android/server/PowerManagerService;

    iput-boolean p2, p0, Lcom/android/server/PowerManagerService$20;->val$shutdown:Z

    iput-boolean p3, p0, Lcom/android/server/PowerManagerService$20;->val$confirm:Z

    iput-object p4, p0, Lcom/android/server/PowerManagerService$20;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3034
    monitor-enter p0

    .line 3035
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$20;->val$shutdown:Z

    if-eqz v0, :cond_0

    .line 3036
    iget-object v0, p0, Lcom/android/server/PowerManagerService$20;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$20;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 3040
    :goto_0
    monitor-exit p0

    .line 3041
    return-void

    .line 3038
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$20;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$20;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/PowerManagerService$20;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3040
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method