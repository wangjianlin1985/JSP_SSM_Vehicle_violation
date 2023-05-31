package com.app.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class FileuploadServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String savePath = uploadFile(request,response);
		request.setAttribute("message", "Upload OK");
		request.setAttribute("saved", savePath);
		request.getRequestDispatcher("upload.jsp").forward(request, response);
	}
	
	

	private String uploadFile(HttpServletRequest request, HttpServletResponse response)
	{
		String savePath = "";
		
		
		  // �ڽ�������֮ǰ���ж����������Ƿ�Ϊ�ļ��ϴ�����
      boolean isMultipart = ServletFileUpload.isMultipartContent(request);
      // �ļ��ϴ�������
      FileItemFactory factory = new DiskFileItemFactory();
      // �����ļ��ϴ�������
      ServletFileUpload upload = new ServletFileUpload(factory);
      // ��ʼ����������Ϣ
      List items = null;
      try {
          items = upload.parseRequest(request);
      }
      catch (FileUploadException e) {
          e.printStackTrace();
      }

      // ������������Ϣ�����ж�
      Iterator iter = items.iterator();
      while (iter.hasNext()) {
          FileItem item = (FileItem) iter.next();
          // ��ϢΪ��ͨ�ĸ�ʽ
          if (item.isFormField()) {
              String fieldName = item.getFieldName();
              String value = item.getString();
              request.setAttribute(fieldName, value);
          }
          // ��ϢΪ�ļ���ʽ
          else {
              String fileName = item.getName();
              
              String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);  
              fileName =  UUID.randomUUID()+"."+suffix;
              savePath = "uploadFile/"+fileName;
            //  int index = fileName.lastIndexOf("\\");
              //fileName = fileName.substring(index + 1);
              request.setAttribute("realFileName", fileName);

              // ���ļ�д��
//              String path = req.getContextPath();
//              String directory = "uploadFile";
//              String basePath = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort() + path + "/" + directory;
              String basePath = request.getRealPath("/uploadFile");
              File file = new File(basePath, fileName);
              try {
                  item.write(file);
              }
              catch (Exception e) {
                  e.printStackTrace();
              }
          }
      }
      
      return savePath;
      
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
