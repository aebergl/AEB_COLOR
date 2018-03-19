function [palette] = GetPalette( varargin )
%   GetPalette returns a color palette matrix of size Nx3
%
%   [ColorMap] = GetPalette('Palette Id') Returns a color palette
%   [ColorMap] = GetPalette() Shows available color palettes
%   [ColorMap] = GetPalette('Palette Id',indx) Returns a color palette
%                based on the indx vector
%   [PaletteIds] = GetPalette('GetPaletteIds') return the list of valid palette ids
%
%   Current valid palettes are: 'JCO','nejm','Lancet','Science','Nature',
%   'lines','aeb01','ETS01','ETS02','Yun_LAML'

ValidPalettIds={'JCO','nejm','Lancet','Science','Nature','lines','aeb01','ETS01','ETS02','Yun_LAML'};

if nargin < 1 || ~any(strcmpi(varargin{1},[ValidPalettIds,'GetPaletteIds']) )
    palette = ValidPalettIds;
    ShowPalette
    return
else
    Id = varargin{1};
    if strcmpi(Id,'GetPaletteIds')
        palette = ValidPalettIds;
    elseif strcmpi(Id,'JCO')
        palette = [
            0                   0.450980392156863   0.760784313725490
            0.937254901960784   0.752941176470588                   0
            0.525490196078431   0.525490196078431   0.525490196078431
            0.803921568627451   0.325490196078431   0.298039215686275
            0.478431372549020   0.650980392156863   0.862745098039216
            0                   0.235294117647059   0.403921568627451
            0.560784313725490   0.466666666666667                   0
            0.231372549019608   0.231372549019608   0.231372549019608
            0.654901960784314   0.188235294117647   0.188235294117647
            0.290196078431373   0.411764705882353   0.564705882352941];
        
    elseif strcmpi(Id,'nejm')
        palette = [
            0.737254901960784   0.235294117647059   0.160784313725490
            0                   0.447058823529412   0.709803921568627
            0.882352941176471   0.529411764705882   0.152941176470588
            0.125490196078431   0.521568627450980   0.305882352941176
            0.470588235294118   0.462745098039216   0.694117647058824
            0.435294117647059   0.600000000000000   0.678431372549020
            1.000000000000000   0.862745098039216   0.568627450980392
            0.933333333333333   0.298039215686275   0.592156862745098];
        
    elseif strcmpi(Id,'Lancet')
        palette = [
            0                   0.274509803921569   0.545098039215686
            0.929411764705882                   0                   0
            0.258823529411765   0.709803921568627   0.250980392156863
            0                   0.600000000000000   0.705882352941177
            0.572549019607843   0.368627450980392   0.623529411764706
            0.992156862745098   0.686274509803922   0.568627450980392
            0.678431372549020                   0   0.164705882352941
            0.678431372549020   0.713725490196078   0.713725490196078
            0.105882352941176   0.098039215686275   0.098039215686275
            ];
        
    elseif strcmpi(Id,'Nature')
        palette = [
            0.901960784313726   0.294117647058824   0.207843137254902
            0.301960784313725   0.733333333333333   0.835294117647059
            0                   0.627450980392157   0.529411764705882
            0.235294117647059   0.329411764705882   0.533333333333333
            0.952941176470588   0.607843137254902   0.498039215686275
            0.517647058823529   0.568627450980392   0.705882352941177
            0.568627450980392   0.819607843137255   0.760784313725490
            0.862745098039216                   0                   0
            0.494117647058824   0.380392156862745   0.282352941176471
            0.690196078431373   0.611764705882353   0.521568627450980
            ];
    elseif strcmpi(Id,'Science')
        palette = [
            0.231372549019608   0.286274509803922   0.572549019607843
            0.933333333333333                   0                   0
            0                   0.545098039215686   0.270588235294118
            0.388235294117647   0.094117647058824   0.474509803921569
            0.372549019607843   0.333333333333333   0.607843137254902
            0.733333333333333                   0   0.129411764705882
            0                   0.509803921568627   0.501960784313725
            0.635294117647059                   0   0.337254901960784
            0.501960784313725   0.505882352941176   0.501960784313725
            0.105882352941176   0.098039215686275   0.098039215686275
            ];
        
    elseif strcmpi(Id,'lines') % MATLABs lines colormap, included to make it simple
        palette = [
            0         0.4470    0.7410
            0.8500    0.3250    0.0980
            0.9290    0.6940    0.1250
            0.4940    0.1840    0.5560
            0.4660    0.6740    0.1880
            0.3010    0.7450    0.9330
            0.6350    0.0780    0.1840
            ];
        
    elseif strcmpi(Id,'aeb01') % My own color palette
        palette = [
            0.737       0.235       0.161
            0           0.451       0.761
            0.937       0.753       0
            0.525       0.525       0.525
            0.125       0.522       0.306
            0.4940      0.1840      0.5560
            0.561       0.4667      0
            0.882       0.529       0.153
            0.435       0.600       0.678
            1.000       0.863       0.569
            0.933       0.298       0.592
            0.3010      0.7450      0.9330
            0.231       0.231       0.231];   
              elseif strcmpi(Id,'ETS01') % Color palette for ETS paper
        palette = [
            0.047058824         0.294117647         0.749019608
            0.066666666666667   0.384313725490196   1.000000000000000
            0.078431372549020   0.694117647058824   0.874509803921569
            0.070588235294118   0.847058823529412   1.000000000000000
            0.937254901960784   0.752941176470588                   0
            0.996078431372549   0.560784313725490                   0
            0.996078431372549   0.278431372549020                   0
            0.698039216         0                   0.168627451
            ];

     elseif strcmpi(Id,'ETS02') % Color palette for ETS paper
        palette = [
            0.933       0.298       0.592
            0           0.600       0.706
            0.525       0.525       0.525
            0.125       0.522       0.306
            0.561       0.467       0
        ];
   
     elseif strcmpi(Id,'Yun_LAML') % Color palette for ETS paper
        palette = [
    
            0.627450980392157   0.070588235294118   0.082352941176471
            0.070588235294118   0.278431372549020   0.639215686274510
            0.129411764705882   0.360784313725490   0.117647058823529
            0.447058823529412                   0   0.360784313725490
            0                   0                   0
            0.792156862745098   0.556862745098039   0.388235294117647
            0.847058823529412   0.682352941176471                   0
            0.580392156862745   0.709803921568627   0.145098039215686
            0.976470588235294   0.941176470588235                   0
        ];
    
    end
end
if nargin == 2
    indx = varargin{2};
    palette = palette(indx,:);
end


end



