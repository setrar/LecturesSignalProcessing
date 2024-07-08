function plot_rea(sig; nb=10, fig=1)
    # figure(fig)
    for i in 1:nb
        plot(X[i, :] .+ 10 * (i - 1)
            , linewidth = .5
            )  # Offset each realization for better visibility
    end
    xlabel!("Time")
    ylabel!("Realizations")
    title!("Realizations and means of a random signal")
    # size!(800,600)
    # grid!(true)
end

if abspath(PROGRAM_FILE) == @__FILE__
    rv = Normal(0, 1)
    size = (100, 150)
    sig = rand(rv, size)
    plot_rea(sig, nb=10, fig=1)
end
