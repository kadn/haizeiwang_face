 m = VideoReader('suoyou4.avi');
 %
 num=[   0, % lufei   1 
         0, % suolong 2 
         0, % namei   3
         0, % shanzhi 4
         0, % wusuopu 5 
         0, % qiaoba  6
         0, % buluke  7
         0, % kebi    8
         0, % luobin  9 
         0, % weiwei 10
         0,
         0,
         0] ;
     
 redo = 0
 fr = []
 
 start = 0;
 xuhao = start;
 while(xuhao)
     xuhao=xuhao-1;
     fr = readFrame(m);
 end
 countnum = start;

 
 while hasFrame(m)
     countnum = countnum+1;
     fprintf('current frame : %d\n', countnum);
     fr = readFrame(m);
     img = imcrop(fr);
     intense = size(img,1)   % 不希望处理的情况
     if intense < 100
         continue
     end
     classes = input('input name : ');
     switch classes
         case 'l'
             dirname = 'lufei';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 's'
             dirname = 'suolong';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'n'
             dirname = 'namei';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'w'
             dirname = 'wusuopu';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'k'
             dirname = 'kebi';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'shan'
             dirname = 'shanzhi';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'x'
             dirname = 'xiangkesi';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'luobin'
             dirname = 'luobin';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'q'
             dirname = 'qiaoba';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'b'
             dirname = 'buluke';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'no'
             dirname = 'notnow';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         case 'wei'
             dirname = 'weiwei';
             dd = dir(dirname);
             existed = size(dd,1)-2;
             imwrite(img,[dirname,sprintf('/%d.png',existed)]);
         otherwise
             dirname ='';
             disp('not saved')
     end
 end
     