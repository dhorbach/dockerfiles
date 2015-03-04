SCRIPTPATH=`pwd -P`
INSTALLDIR=/opt/wftesseract
mkdir -p $INSTALLDIR
cp -r $SCRIPTPATH/wf_tesseract $SCRIPTPATH/run.sh $INSTALLDIR
chmod +x $INSTALLDIR/run.sh
chmod +x $INSTALLDIR/wf_tesseract
ln -s $INSTALLDIR/run.sh /usr/local/bin/wftesseract
