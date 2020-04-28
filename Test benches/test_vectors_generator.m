fileId = fopen('test_vectors.txt','w');

for i = 0 : 63 
    for j = 0 : 63
        suma = i + j;
        str1 = dec2bin(i,6);
        str2 = dec2bin(j,6);
        str3 = dec2bin(suma,7);
        fprintf(fileId,'%6s%6s%7s\n',str1,str2,str3);
    end
    
end

fclose(fileId);