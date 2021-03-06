%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% File generated by IDL2Matlab V2.0.      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [varargout] = nb_prem(varargin)

%%Initialization of parameters
  I2Mkwn=char('I2M_a1', 'I2M_pos');
  I2Mkwv={'lim', 'I2M_pos'};
  lim=[]; I2M_pos=[];
  I2M_lst={}; I2M_out=''; lv=length(varargin); if rem(lv,2) ~= 0, I2M_ok=0; else, I2M_ok=1;
  for I2M=1:2:lv; I2M_tmp=varargin{I2M}; if ~ischar(I2M_tmp); I2M_ok=0; break; end; I2Mx=strmatch(I2M_tmp,I2Mkwn); if length(I2Mx) ~=1; I2M_ok=0; break; end; eval([I2Mkwv{I2Mx} '=varargin{I2M+1};']); I2M_lst{(I2M+1)/2}=I2Mkwv{I2Mx}; end; end;
  if ~I2M_ok; for I2M=1:lv; eval([I2Mkwv{I2M} '=varargin{I2M};']); end; end;
  if ~isempty(I2M_pos); for I2M=1:length(I2M_pos); I2Ms=num2str(I2M); I2M_out=[I2M_out 'varargout{' I2Ms '}=' I2M_lst{I2M_pos(I2M)} '; ']; end; end;

%%End of parameters initialization

  cour_int = 1;
  compt = 1;
  str = 'liste des ' + strung(lim) + ' nombres premiers :';
  [str] = printt('I2M_a1', str, 'I2M_pos', [1]);
  while ((compt < lim | compt == lim)),
    if (verif_prem(cour_int))
      [cour_int] = printt('I2M_a1', cour_int, 'I2M_pos', [1]);
      compt = compt + 1;
    end%if

    cour_int = cour_int + 2;
  end%while

eval(I2M_out);
 return;
%% end of function nb_prem
