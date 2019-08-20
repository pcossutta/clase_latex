cleanfigure;
extraCode={'\usepackage{sansmathfonts}', '\renewcommand*\familydefault{\sfdefault}'};
%extraCode={};
extraAxisOptions= {'xticklabel style={/pgf/number format/fixed,/pgf/number format/precision=5}','scaled x ticks=false', 'tick label style={font=\footnotesize}'};
texName=strcat(name, '.tex');
tmpName='tmp.tex';
matlab2tikz(tmpName, ...
    'floatFormat', '%.5f', ...
    'standalone', true, ...
    'checkForUpdates', false, ...
    'extraCode', extraCode, ...
    'extraAxisOptions', extraAxisOptions);

ofid=fopen(tmpName);
dfid=fopen(texName, 'w');
while 1
        tline=fgetl(ofid);
        if ~ischar(tline), break, end
        if isempty(strfind(tline, 'nan'))
            fprintf(dfid, '%s\n', tline);
        end
end
fclose(ofid);
fclose(dfid);
delete(tmpName);
    