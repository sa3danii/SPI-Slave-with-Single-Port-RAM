vlib work
vlog SPI_old.v ram.v top.v tb.v
vsim -voptargs=+acc tb
add wave *
add wave -position insertpoint  \
sim:/tb/top1/m1/tx_valid \
sim:/tb/top1/m1/tx_data \
sim:/tb/top1/m1/rx_valid \
sim:/tb/top1/m1/rx_data
add wave -position insertpoint /tb/top1/m2/mem
run -all
#quit -sim



