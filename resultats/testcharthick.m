%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% File generated by IDL2Matlab v1.1. %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function testcharthick()

  global i2mvs_p % SYSTEM VARIABLES

  x = findgen(100);
  y = x.^2 - x + 5;
  i2mvs_p.multi = d1_array(0,2,2,0,0);
  i2mvs_p.charthick = 2;
  [y] = plott('I2M_a1', y, 'title', 'charthick = 1', 'charthick', 1, 'I2M_pos', [1]);
  xyouts(15,30,'charthick = 2');
  [y] = plott('I2M_a1', y, 'title', 'charthick = 2', 'I2M_pos', [1]);
  xyouts('I2M_a1', 15, 'I2M_a2', 30, 'I2M_a3', 'charthick = 1', 'charthick', 1);
  [y] = plott('I2M_a1', y, 'I2M_pos', [1]);

return;
% end of function testcharthick