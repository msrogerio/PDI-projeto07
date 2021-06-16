function nc = wavepaste( type, c, s, n, x )
%WAVEPASTE Puts coefficients in a wavelet decomposition structure.
%   NC = WAVEPASTE(TYPE, C, S, N, X) returns the new decomposition
%   structure after pasting X into it based on TYPE and N.
%
%	INPUTS:
%		TYPE		Coefficient category
%		----------------------------------------------------------
%		'a'			Approximation coefficients
%		'h'			Horizontal details
%		'v'			Vertical details
%		'd'			Diagonal details 
%
%		[C, S] is a wavelet data structure.
%		N specifies a decomposition level (ignored if TYPE = 'a').
%       X is a 2- or 3-D approximation or detail coefficient
%         matrix whose dimensions are appropriate for decomposition 
%         level N.
%
%	See also WAVEWORK, WAVECUT, and WAVECOPY.
narginchk(5, 5);

nc = wavework('paste', type, c, s, n, x);
end