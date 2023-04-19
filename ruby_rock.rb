require "libusb"

usb = LIBUSB::Context.new
device = usb.devices(idVendor: 4661, idProduct: 33296).first
device_handle = device.open

device.open_interface(0) do |handle|

  handle.control_transfer(bmRequestType: 0x40, bRequest: 0xa0, wValue: 0xe600, wIndex: 0x0000, dataOut: 1.chr)
end