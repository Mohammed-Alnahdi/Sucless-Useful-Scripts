static const char *upvol[] = {"amixer", "set", "Master", "10%+", NULL};
static const char *downvol[] = {"amixer", "set", "Master", "10%-", NULL};
static const char *mutevol[] = {"amixer", "set", "Master", "0%", NULL};

//if use laptop

static Key keys[] = {

  { 0,                       XK_F2,      spawn,           {.v = downvol} },
  { 0,                       XK_F3,      spawn,           {.v = upvol} },
  { 0,                       XK_F1,      spawn,           {.v = mutevol} },
}

/*if use PC * Add to keys[] array. With 0 as modifier, you are able to use the keys directly. */
static Key keys[] = {
	{ 0,                       XF86XK_AudioLowerVolume, spawn, {.v = downvol } },
	{ 0,                       XF86XK_AudioMute, spawn, {.v = mutevol } },
	{ 0,                       XF86XK_AudioRaiseVolume, spawn, {.v = upvol   } },
};
