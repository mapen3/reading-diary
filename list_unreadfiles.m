clc;clear all;close all;
text = string(fileread('diary.tex'));

%extract keyname of the read documents
newStr = extractBetween(text,"\record{","}");
folderinfo = dir('library');
[r,~] = size(folderinfo)
vec = 1;
pdfname = string();
for i = 1:r
    if (folderinfo(i).bytes>0 && folderinfo(i).isdir == 0)
        pdfname(vec,:) = string(folderinfo(i).name);
        vec = vec + 1;
    end
end
%delete ".pdf" extension
pdfname = erase(pdfname,".pdf");
[r,~] = size(pdfname);
vec = 1;
unread = string();
for i = 1:r
    tf = contains(pdfname(i,:),newStr);
    if (tf)
        
    else
        unread(vec,:) = pdfname(i,:);
        vec = vec + 1;
    end
end

fid = fopen('filelog_unreadfiles.txt','w');
fprintf(fid, '%s\n', unread);
fclose(fid);