function [fitresult, gof] = createFit(ghsv_1, X_CO2)
%CREATEFIT(GHSV_1,X_CO2)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input: ghsv_1
%      Y Output: X_CO2
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 30-Jan-2024 15:39:51


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( ghsv_1, X_CO2 );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'X_CO2 vs. ghsv_1', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'ghsv_1', 'Interpreter', 'none' );
ylabel( 'X_CO2', 'Interpreter', 'none' );
grid on


