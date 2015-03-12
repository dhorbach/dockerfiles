SCRIPTPATH=`pwd -P`
INSTALLDIR=/opt/wftesseract
mkdir -p $INSTALLDIR
cp -r $SCRIPTPATH/wf_tesseract $SCRIPTPATH/run.sh $INSTALLDIR

ln -s $INSTALLDIR/run.sh /usr/local/bin/wftesseract
ln -s $INSTALLDIR/wf_tesseract /usr/local/bin/wf_tesseract

chmod +x $INSTALLDIR/run.sh
chmod +x $INSTALLDIR/wf_tesseract

