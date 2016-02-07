docker run \
  -v ~/fdroid/config.py:/fdroid/config.py \
  -v ~/fdroid/sg-icon.png:/fdroid/sg-icon.png \
  -v ~/fdroid/metadata/:/fdroid/metadata/ \
  -v ~/fdroid/steamgifts-android.jks:/fdroid/steamgifts-android.jks \
  -v ~/fdroid/repo:/fdroid/repo \
  --entrypoint sh \
  mabako/fdroidserver \
  -c "fdroid build -v net.mabako.steamgifts.beta && fdroid publish && fdroid update"
