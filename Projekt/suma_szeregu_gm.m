function s = suma_szeregu_gm(a,n)
   u=0;p=0;
for i=1:n
    v=1/a; %i-ty wyraz sumowanego ciagu
    s=u+v;
    p=u-s+v+p;
    u=s;
end
end