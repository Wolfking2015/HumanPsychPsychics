%The transparency layer of the Mask for reach step For guessing task; YXF 

function transparency=MaskMaker(TotalStepNumber,MaskSize)
%Initilize the transparency matrix
transparency=ones(MaskSize, MaskSize,TotalStepNumber+1);%The first layer is the black mask;

switch TotalStepNumber
    case 2
%Initilize the all transparency matrix building blocks
Construct=ones(MaskSize/2, MaskSize);%y,x
transparency(:,:,2)=[Construct*0;Construct];   
transparency(:,:,3)=[Construct;Construct*0];               
    case 4
%Initilize the transparency
Construct=ones(MaskSize/2, MaskSize/2);
transparency(:,:,2)=[Construct Construct*0;Construct Construct];   
transparency(:,:,3)=[Construct Construct;Construct Construct*0];      
transparency(:,:,4)=[Construct Construct;Construct*0 Construct];     
transparency(:,:,5)=[Construct*0 Construct;Construct Construct];      
    case 8
%Initilize the transparency
Construct=ones(MaskSize/2, MaskSize/2);
transparency(:,:,2)=[Construct fliplr(triu(Construct,1));Construct Construct];   
transparency(:,:,3)=[Construct Construct;Construct tril(Construct,-1)];      
transparency(:,:,4)=[Construct Construct;Construct triu(Construct,1)];     
transparency(:,:,5)=[Construct Construct;fliplr(triu(Construct,1)) Construct];      
transparency(:,:,6)=[Construct Construct;flipud(triu(Construct,1)) Construct];   
transparency(:,:,7)=[triu(Construct,1) Construct;Construct Construct];      
transparency(:,:,8)=[tril(Construct,-1) Construct;Construct Construct];   
transparency(:,:,9)=[Construct flipud(triu(Construct,1));Construct Construct];   

     
end


end 
   