import torch

print('-------- ping_gpu -------')
print("torch.__version__:", torch.__version__)
print("torch.version.cuda:", torch.version.cuda)
if torch.cuda.is_available():
    print("GPU:", torch.cuda.get_device_name(0))
print('----- end ping_gpu ------')
