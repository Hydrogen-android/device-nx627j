.class public Lcom/android/internal/telephony/ATResponseParser;
.super Ljava/lang/Object;
.source "ATResponseParser.java"


# instance fields
.field private mLine:Ljava/lang/String;

.field private mNext:I

.field private mTokEnd:I

.field private mTokStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private nextTok()V
    .locals 8

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    .local v0, "len":I
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-nez v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->skipPrefix()V

    .line 104
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_9

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 112
    .local v1, "c":C
    const/4 v2, 0x0

    .line 114
    .local v2, "hasQuote":Z
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ATResponseParser;->skipWhiteSpace(C)C

    move-result v3

    move v1, v3

    .line 116
    const/16 v3, 0x2c

    const/16 v4, 0x22

    if-ne v1, v4, :cond_5

    .line 117
    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v5, v0, :cond_4

    .line 120
    iget-object v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v1, v5

    .line 121
    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    .line 122
    :goto_0
    if-eq v1, v4, :cond_1

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v5, v0, :cond_1

    .line 123
    iget-object v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v1, v5

    goto :goto_0

    .line 125
    :cond_1
    if-ne v1, v4, :cond_3

    .line 128
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    .line 129
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v4, v0, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_2

    .end local v1    # "c":C
    .end local v2    # "hasQuote":Z
    goto :goto_2

    .line 130
    .restart local v1    # "c":C
    .restart local v2    # "hasQuote":Z
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v3}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v3

    .line 126
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v3}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v3

    .line 118
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v3}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v3

    .line 133
    :cond_5
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    .line 134
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    .line 135
    :goto_1
    if-eq v1, v3, :cond_8

    .line 136
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_6

    .line 137
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iput v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    .line 139
    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ne v4, v0, :cond_7

    .line 140
    goto :goto_2

    .line 142
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_1

    .line 147
    .end local v1    # "c":C
    .end local v2    # "hasQuote":Z
    :cond_8
    :goto_2
    nop

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v2, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v2}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v2

    .line 105
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_9
    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v1
.end method

.method private skipPrefix()V
    .locals 4

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 175
    .local v0, "s":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 178
    .local v1, "c":C
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    .line 179
    return-void

    .line 181
    .end local v1    # "c":C
    :cond_0
    goto :goto_0

    .line 183
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    const-string v2, "missing prefix"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private skipWhiteSpace(C)C
    .locals 4
    .param p1, "c"    # C

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    .local v0, "len":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    return p1

    .line 162
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v1
.end method


# virtual methods
.method public hasMore()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mNext:I

    iget-object v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextBoolean()Z
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 51
    .local v0, "c":C
    const/16 v2, 0x30

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 52
    :cond_0
    const/16 v2, 0x31

    if-ne v0, v2, :cond_1

    return v1

    .line 53
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v1}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v1

    .line 47
    .end local v0    # "c":C
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v0}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v0
.end method

.method public nextInt()I
    .locals 4

    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    .line 66
    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    if-ge v1, v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 70
    .local v2, "c":C
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 74
    mul-int/lit8 v0, v0, 0xa

    .line 75
    add-int/lit8 v3, v2, -0x30

    add-int/2addr v0, v3

    .line 66
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .restart local v2    # "c":C
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/ATParseEx;

    invoke-direct {v3}, Lcom/android/internal/telephony/ATParseEx;-><init>()V

    throw v3

    .line 78
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_1
    return v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3

    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/ATResponseParser;->nextTok()V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponseParser;->mLine:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokStart:I

    iget v2, p0, Lcom/android/internal/telephony/ATResponseParser;->mTokEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
