.class public Lorg/libsdl/app/SDLActivity$SDLCommandHandler;
.super Landroid/os/Handler;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SDLCommandHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x80

    .line 370
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 371
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 372
    const-string v3, "SDL"

    const-string v4, "error handling message, getContext() returned null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 375
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    .line 404
    :pswitch_0
    instance-of v3, v0, Lorg/libsdl/app/SDLActivity;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/libsdl/app/SDLActivity;

    .end local v0    # "context":Landroid/content/Context;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lorg/libsdl/app/SDLActivity;->onUnhandledMessage(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    const-string v3, "SDL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error handling message, command is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_1
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 378
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    const-string v3, "SDL"

    const-string v4, "error handling message, getContext() returned no Activity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :pswitch_2
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 385
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 387
    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 388
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v3, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 393
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_3
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 394
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 395
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 398
    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
