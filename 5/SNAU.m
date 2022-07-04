function F = SNAU(x)
    y0 = 0.05;
    y0_ = 0;
    a = 0.6;
    w = 4;
    F(1) = x(1)*sin(x(2))-y0;
    F(2) = x(1)*(a*sin(x(2))+w*cos(x(2)))-y0_;
end
    