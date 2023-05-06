function [faces, ids] = getTrainingFaces(type)
    
    DB1 = 1:32;
      
    i = 1;
    for image_num = [DB1]
        id = getId(image_num);
        image = imread(['../data/faces/image_' num2str(image_num, '%04d') '.jpg']);
        [face_triangle, image] = detectFace(image);
        if(~isempty(fieldnames(face_triangle)))
            faces(:,:,i) = normalizeFace(face_triangle, image, type);
            ids(i) = id;
            i = i + 1;
        end
    end
end

