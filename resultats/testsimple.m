%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% File generated by IDL2Matlab V2.0.      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [varargout] = testsimple(varargin)

%%Initialization of parameters
  I2Mkwn=char('I2M_a1', 'I2M_a2', 'I2M_pos');
  I2Mkwv={'x', 'y', 'I2M_pos'};
  x=[]; y=[]; I2M_pos=[];
  I2M_lst={}; I2M_out=''; lv=length(varargin); if rem(lv,2) ~= 0, I2M_ok=0; else, I2M_ok=1;
  for I2M=1:2:lv; I2M_tmp=varargin{I2M}; if ~ischar(I2M_tmp); I2M_ok=0; break; end; I2Mx=strmatch(I2M_tmp,I2Mkwn); if length(I2Mx) ~=1; I2M_ok=0; break; end; eval([I2Mkwv{I2Mx} '=varargin{I2M+1};']); I2M_lst{(I2M+1)/2}=I2Mkwv{I2Mx}; end; end;
  if ~I2M_ok; for I2M=1:lv; eval([I2Mkwv{I2M} '=varargin{I2M};']); end; end;
  if ~isempty(I2M_pos); for I2M=1:length(I2M_pos); I2Ms=num2str(I2M); I2M_out=[I2M_out 'varargout{' I2Ms '}=' I2M_lst{I2M_pos(I2M)} '; ']; end; end;

%%End of parameters initialization

  %a = findgen(p)
  %b=5
  %For i=0,b do a=a+1
  %print,a
  a = 1;
  if ((x < 0))
    x = -x;
  end%if

  if ((y >= 0))
    y = +y;
  else
    y = -y;
  end%if

  a = a .* x;
  x = x + y;
  z = min(3, x);
  switch y,
    case 1,
      % Traduction du repeat en while
      % Action differente suivant la valeur de y
      y = y ./ 0.5;
      while (~((8 <= y) | (y == z))),
        y = y ./ 0.5;
      end%while
    case 2,
      while ((x ~= z) & (x > z)),
        x = x - 1;
      end%while
    otherwise
      if (((x > y) & (x > z)))
        x = max((y - 2), z);
      end%if

  end %switch
  [x] = printt('I2M_a1', x, 'I2M_pos', [1]);
  % Affichage du sinus de x et du cosinus de y
  [y] = printt('I2M_a1', y, 'I2M_pos', [1]);
  printt(sin(x));
  printt(cos(y));

eval(I2M_out);
 return;
%% end of function testsimple