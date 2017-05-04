% DataSet = Train('Train', [1 2 3 4 5 6])
% TinyDataSet = Train('Train', [1 2]) % used for SVM
% TestSet = Train('Test', [1])
function DataSet = Train(Role, ClassesToBeTrained)
    DataSet = zeros(1,33);
    ObjectsNumber = 0;
    if strcmp(Role,'Train')
        Classes = ClassesToBeTrained;
        ObjectsNumber = 25;
    elseif strcmp(Role,'Test')
        Classes = 0; % garb :'3
        ObjectsNumber = 20;
    end
    for Class=1:numel(Classes)
        for i=1:ObjectsNumber
            if strcmp(Role,'Train')
                p = [pwd, '\Classes\', int2str(Class), '\'];
                
            elseif strcmp(Role,'Test')
                p = [pwd, '\test\'];
            end
            n='.png';
            c=num2str(i);
            path=[p,c,n];
            [a, b, c, d ]=Split( path );
            [XC1, YC1] = Centroid(a);
            [XC2, YC2] = Centroid(b);
            [XC3, YC3] = Centroid(c);
            [XC4, YC4] = Centroid(d);
            [XM1, YM1] = GetMedoid(a);
            [XM2, YM2] = GetMedoid(b);
            [XM3, YM3] = GetMedoid(c);
            [XM4, YM4] = GetMedoid(d);
            D1= Density(a);
            D2= Density(b);
            D3= Density(c);
            D4= Density(d);
            A1 = Area (a);
            A2 = Area (b);
            A3 = Area (c);
            A4 = Area (d);
            P1 = Perimeter (a);
            P2 = Perimeter (b);
            P3 = Perimeter (c);
            P4 = Perimeter (d);
            MAL1 = MajorAxisLength(a);
            MAL2 = MajorAxisLength(b);
            MAL3 = MajorAxisLength(c);
            MAL4 = MajorAxisLength(d);
            features = [XC1, YC1, XC2, YC2, XC3, YC3, XC4, YC4, XM1, YM1, XM2, YM2, XM3, YM3, XM4, YM4, D1, D2, D3, D4, A1, A2, A3, A4, P1, P2, P3, P4, MAL1, MAL2, MAL3, MAL4, Class];
            InsertAT = i + ((Class-1)*25);
            DataSet(InsertAT,:) = features;
         end
    end
    DataSet = Normalize(DataSet);
end