function H = cumulativeHistogram(h)
    % all intensity values set to zero
    H = zeros(1, 256);
    H(1) = h(1);

    for i = 2:256
        H(i) = H(i - 1) + h(i);
    end
end
