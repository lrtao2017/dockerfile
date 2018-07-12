# GST_SNP_Predict
# 20180710

FROM centos:python3.6-perl

MAINTAINER liuweijie@celloud.cn

RUN yum install lapack-devel blas-devel -y
RUN pip install -U pip
RUN pip install -U numpy
RUN pip install -U scipy
RUN pip install -U scikit-learn
RUN pip install matplotlib
RUN pip install pandas
RUN pip install statsmodels
RUN pip install xgboost
RUN pip install gensim
RUN pip install keras
RUN pip install jieba
RUN pip install tensorflow
RUN pip install opencv-python
RUN pip install NLTK
RUN pip install PyMySQL

RUN mkdir /usr/local/GST_SNP_Predict

COPY get_parameter.pl /usr/local/GST_SNP_Predict/
COPY pure_Ruijin3.pl /usr/local/GST_SNP_Predict/
COPY SNP_Predict.py /usr/local/GST_SNP_Predict/
COPY xgb_modify.model /usr/local/GST_SNP_Predict/

WORKDIR /usr/local/GST_SNP_Predict
ENTRYPOINT ["python", "SNP_Predict.py"] #可以接收参数
#docker run --name snp-test2 -v /snp1:/snp1 hdy:GST_SNP_Predict_v.2.0 /snp1/frshtraceKIT_11_f.poly /snp1/KIT_11_f.query.abl.dump /snp1/feature1.xlsqual /snp1/feature2.xls /snp1/result_prediction.xls
#CMD ["/bin/bash"]
