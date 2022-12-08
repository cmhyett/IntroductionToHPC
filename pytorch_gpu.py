import numpy as np
import torch

device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

x = torch.zeros((3,3,3), device=device, dtype=torch.complex64)

y = np.linspace(1,10,10)
y = torch.tensor(y, device=device,dtype=torch.complex64)
