%计算10名学生6门课程的总分、排名，平均分（后续可自主添加）
f_name='name';name={'张三','李四','王二','小明','李红','小红','张强','辉宏','小二','张飞'};
f_number='Student_number';number={'20210001','20210002','20210003','20210004','20210005', ...
    '20210006','20210007','20210008','20210009','20210010'};
f1='Chinese';value1={73,85,94,64,75,85,89,90,80,95};
f2='Math';value2={95,94,70,84,69,73,85,87,70,56};
f3='Physics';value3={70,76,89,68,70,90,58,67,89,68};
f4='English';value4={69,85,86,95,94,78,83,61,54,87};
f5='Line_generation';value5={90,94,71,64,64,76,80,78,90,100};
f6='Compound_change';value6={86,74,60,53,86,98,91,84,83,72};
f='subject';value=struct(f1,value1,f2,value2,f3,value3,f4,value4,f5,value5,f6,value6);
person=struct(f_name,name,f_number,number,f,value);%person结构体里包含‘subject’学科结构体
for i=1:6
    x=person(i).subject;
end
%统计每个人的总成绩
for j=1:10
    y(j)=x(j).Chinese+x(j).Math+x(j).Physics+x(j).English+x(j).Line_generation...
        +x(j).Compound_change;
end
[y_1,index]=sort(y,'descend');%将成绩降序排列，并返回排序之前的索引号index，及其索引号对应的值
%打印总成绩、排名和每个人的平均分
for i=1:10
    disp([person(index(i)).name,'  学号:',person(index(i)).Student_number,'  总成绩为',num2str(y_1(i)),'  位列第',num2str(i),...
        '  平均分为',num2str(y_1(i)/length(y_1))]);
end
